<?php
class ModelBlogArticle extends Model {
	public function getArticle($article_id) {
        $query = $this->db->query("SELECT DISTINCT a.article_id, a.sort_order, a.status, a.date_modified, ad.language_id, ad.name, ad.description, ad.intro_text, ad.meta_title, ad.meta_description, ad.meta_keyword, ad.image, ad.author_id FROM " . DB_PREFIX . "easy_blog_article a LEFT JOIN " . DB_PREFIX . "easy_blog_article_description ad ON (a.article_id = ad.article_id) WHERE a.article_id = '" . (int)$article_id . "' AND ad.language_id = '" . (int)$this->config->get('config_language_id') . "' AND a.status = '1' ");

		if ($query->num_rows) {
			return array(
				'article_id'       => $query->row['article_id'],
				'name'             => $query->row['name'],
				'description'      => $query->row['description'],
                'image'            => $query->row['image'],
				'meta_title'       => $query->row['meta_title'],
				'meta_description' => $query->row['meta_description'],
				'meta_keyword'     => $query->row['meta_keyword'],
				'intro_text'       => $query->row['intro_text'],
				'sort_order'       => $query->row['sort_order'],
				'status'           => $query->row['status'],
				'date_modified'    => $query->row['date_modified'],
                'image'            => $query->row['image'],
                'author_id'        => $query->row['author_id']
			);
		} else {
			return false;
		}
	}

    public function getArticles($data = array()) {
        $sql = "SELECT a.article_id " . " FROM " . DB_PREFIX . "easy_blog_article a";

        $sql .= " LEFT JOIN " . DB_PREFIX . "easy_blog_article_description ad ON (a.article_id = ad.article_id) WHERE ad.language_id = '" . (int)$this->config->get('config_language_id') . "' AND a.status = '1' ";


        if (!empty($data['filter_name']) || !empty($data['filter_tag'])) {
            $sql .= " AND (";

            if (!empty($data['filter_name'])) {
                $implode = array();

                $words = explode(' ', trim(preg_replace('/\s+/', ' ', $data['filter_name'])));

                foreach ($words as $word) {
                    $implode[] = "ad.name LIKE '%" . $this->db->escape($word) . "%'";
                }

                if ($implode) {
                    $sql .= " " . implode(" AND ", $implode) . "";
                }

                if (!empty($data['filter_description'])) {
                    $sql .= " OR ad.description LIKE '%" . $this->db->escape($data['filter_name']) . "%'";
                }
            }

            if (!empty($data['filter_name']) && !empty($data['filter_tag'])) {
                $sql .= " OR ";
            }
            $sql .= ")";
        }

        $sql .= " GROUP BY a.article_id";

        $sort_data = array(
            'a.date_modified',
            'a.sort_order',
            'ad.name'
        );

        $sql .= " ORDER BY a.sort_order ASC, a.date_modified DESC";

        if (isset($data['start']) || isset($data['limit'])) {
            if ($data['start'] < 0) {
                $data['start'] = 0;
            }

            if ($data['limit'] < 1) {
                $data['limit'] = 20;
            }

            $sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
        }

        $article_data = array();

        $query = $this->db->query($sql);

        foreach ($query->rows as $result) {
            $article_data[$result['article_id']] = $this->getArticle($result['article_id']);
        }

        return $article_data;
    }

	public function getLatestArticles($limit) {
		$article_data = $this->cache->get('article.latest.' . (int)$this->config->get('config_language_id') . '.' . (int)$limit);

        if (!$article_data) {
            $query = $this->db->query("SELECT article_id FROM " . DB_PREFIX . "easy_blog_article WHERE status = '1' ORDER BY date_modified DESC LIMIT " . (int)$limit);

            foreach ($query->rows as $result) {
                $article_data[$result['article_id']] = $this->getArticle($result['article_id']);
            }

            $this->cache->set('article.latest.' . (int)$this->config->get('config_language_id') . '.' . (int)$limit, $article_data);
        }

        return $article_data;
	}

    public function getNewestArticles() {
        $article_data = array();

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "easy_blog_article_description ORDER BY article_id DESC");

        foreach ($query->rows as $result) {
            $article_data[] = array(
                'name' => $result['name'],
                'article_id' => $result['article_id'],
                'intro_text' => $result['intro_text'],
                'image' => $result['image']
            );
        }

        return $article_data;
    }

	public function getTotalArticles($data = array()) {
		$sql = "SELECT COUNT(DISTINCT a.article_id) AS total FROM " . DB_PREFIX . "easy_blog_article a";

		$sql .= " LEFT JOIN " . DB_PREFIX . "easy_blog_article_description ad ON (a.article_id = ad.article_id) WHERE ad.language_id = '" . (int)$this->config->get('config_language_id') . "' AND a.status = '1' ";

		if (!empty($data['filter_name']) ) {
			$sql .= " AND (";

			if (!empty($data['filter_name'])) {
				$implode = array();

				$words = explode(' ', trim(preg_replace('/\s+/', ' ', $data['filter_name'])));

				foreach ($words as $word) {
					$implode[] = "ad.name LIKE '%" . $this->db->escape($word) . "%'";
				}

				if ($implode) {
					$sql .= " " . implode(" AND ", $implode) . "";
				}

				if (!empty($data['filter_description'])) {
					$sql .= " OR ad.description LIKE '%" . $this->db->escape($data['filter_name']) . "%'";
				}
			}

			$sql .= ")";
		}

		$query = $this->db->query($sql);

		return $query->row['total'];
	}
    public function getOurEditors () {
        $sql = "SELECT * FROM `" . DB_PREFIX . "user` WHERE user_group_id = 11";



        $query = $this->db->query($sql);

        return $query->rows;
    }

    public function getCategories() {
        $article_categories = array();

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "easy_blog_categories");

        foreach ($query->rows as $result) {
            $article_categories[] = array(
                'name' => $result['name'],
                'category_id' => $result['category_id']
            );
        }

        return $article_categories;
    }

    public function getArticlesByEditor($editor_id) {
        $article_data = array();

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "easy_blog_article_description WHERE author_id = " . (int)$editor_id);

        foreach ($query->rows as $result) {
            $article_data[] = array(
                'name' => $result['name'],
                'intro_text' => $result['intro_text'],
                'image' => $result['image'],
                'article_id' => $result['article_id']
            );
        }

        return $article_data;
    }
}
