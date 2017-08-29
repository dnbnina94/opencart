<?php

class ControllerBlogEditor extends Controller
{
    private $error = array();

    public function index()
    {
        $this->load->language('blog/article');
        $this->load->model('tool/image');

        if (isset($this->request->get['editor_id'])) {
            $editor_id = (int)$this->request->get['editor_id'];
        } else {
            $editor_id = 0;
        }

        $this->load->model('blog/editor');

        $editor_info = $this->model_blog_editor->getEditor($editor_id);

        foreach ($editor_info as $editor) {
            $data['editor'] = array(
                'user_id' => $editor['user_id'],
                'firstname' => $editor['firstname'],
                'lastname' => $editor['lastname'],
                'image' => $this->model_tool_image->resize($editor['image'], 150, 150),
                'short_description' => $editor['short_description'],
                'description' => $editor['description'],
            );
        }
        if ($editor_info) {
            $this->document->addLink($this->url->link('blog/editor', 'editor_id=' . $this->request->get['editor_id']), 'canonical');

            $data['editor_id'] = (int)$this->request->get['editor_id'];

            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');

            $this->load->model('blog/article');

            $data['blog_categories'] = $this->model_blog_article->getCategories();

            $data['editors_articles'] = $this->model_blog_article->getArticlesByEditor($data['editor_id']);

            foreach ($data['editors_articles'] as &$article) {
                $article['image'] = $this->model_tool_image->resize($article['image'], 310, 233);
                $article['intro_text'] = utf8_substr(strip_tags(html_entity_decode($article['intro_text'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..';
                $article['href'] = $this->url->link('blog/article', 'article_id=' . $article['article_id']);
            }

            $this->response->setOutput($this->load->view('blog/editor', $data));

        } else {
            $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');

            $this->response->setOutput($this->load->view('error/not_found', $data));
        }
    }
}
