<?php
class ControllerExtensionModuleOureditors extends Controller {
	public function index($setting) {

		static $module = 0;

		$this->load->language('extension/module/oureditors');

		$data['heading_title'] = $this->language->get('heading_title');
		$data['heading_description'] = $this->language->get('heading_description');

		$this->load->model('catalog/category');

		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.transitions.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/fccarousel.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/fccarousel.css');
		} else {
			$this->document->addStyle('catalog/view/theme/default/stylesheet/fccarousel.css');
		}

		$data['name'] = isset($setting['name']) ? $setting['name'] : '';
		$data['name_as_title'] = isset($setting['name_as_title']) ? $setting['name_as_title'] : 0;
		$data['categories'] = array();
		$data['show_title'] = isset($setting['show_title']) ? (int)$setting['show_title'] : 1;
		$data['show_description'] = isset($setting['show_description']) ? (int)$setting['show_description'] : 1;
		$data['itemspage'] = isset($setting['itemspage']) ? (int)$setting['itemspage'] : 4;
		$data['auto_play'] = isset($setting['auto_play']) ? (int)$setting['auto_play'] : 0;
		$data['pause_on_hover'] = isset($setting['pause_on_hover']) ? (int)$setting['pause_on_hover'] : 0;
		$data['show_pagination'] = isset($setting['show_pagination']) ? (int)$setting['show_pagination'] : 0;
		$data['show_navigation'] = isset($setting['show_navigation']) ? (int)$setting['show_navigation'] : 1;

		if (!$setting['limit']) {
			$setting['limit'] = 8;
		}

		$thumb_width = isset($setting['thumb_width']) ? $setting['thumb_width'] : 180;
		$thumb_height = isset($setting['thumb_height']) ? $setting['thumb_height'] : 180;

		// shuffle carousel items
		if(isset($setting['shuffle_items']) && $setting['shuffle_items']) {
			shuffle($setting['categories']);
		}

		$categories = array_slice($setting['categories'], 0, (int)$setting['limit']);

        if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
            $data['base_link'] = $this->config->get('config_ssl');
        } else {
            $data['base_link'] = $this->config->get('config_url');
        }
        $this->load->model('blog/article');
        $this->load->model('tool/image');
        $our_editors = $this->model_blog_article->getOurEditors();

		foreach ($our_editors as $editor) {
				$data['editors'][] = array(
					'editor_id'  => $editor['user_id'],
					'short_description'       => $editor['short_description'],
					'firstname'       => $editor['firstname'],
					'lastname'       => $editor['lastname'],
					'image'       => $this->model_tool_image->resize($editor['image'], 150, 150)
				);

		}
		$data['module'] = $module++;

		// check if isset categories
		if ($data['editors']) {
            return $this->load->view('extension/module/oureditors', $data);
		}
	}

	public function getCategoryPath($category_id){
		$query = $this->db->query("SELECT category_id, parent_id FROM " . DB_PREFIX . "category WHERE category_id = '" . $category_id ."' LIMIT 1");
		if($query->row['category_id']){
			$path = $query->row['category_id'];
			while($query->row['parent_id']!=0){
				$query = $this->db->query("SELECT category_id, parent_id FROM " . DB_PREFIX . "category WHERE category_id = '" . $query->row['parent_id'] ."' LIMIT 1");
				$path = $query->row['category_id'] . "_" . $path;
			}
			return $path;
		}
		return false;
	}

	public function getProductCategoryPath($product_id) {
		$query = $this->db->query("SELECT category_id, parent_id FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . (int)$product_id . "' LIMIT 1");
		if($query->row['category_id']){
			$path = $query->row['category_id'];
			$query = $this->db->query("SELECT parent_id FROM " . DB_PREFIX . "category WHERE category_id = '" . $query->row['category_id'] . "' AND parent_id != 0");
			while($query->num_rows){
				$path = $query->row['parent_id'] . "_" . $path;
				$query = $this->db->query("SELECT parent_id FROM " . DB_PREFIX . "category WHERE category_id = '" . $query->row['parent_id'] . "' AND parent_id != 0");
			}
			return $path;
		}
		return false;
	}
}
