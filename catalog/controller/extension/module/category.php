<?php
class ControllerExtensionModuleCategory extends Controller {
	public function index() {
		$this->load->language('extension/module/category');

		$data['heading_title'] = $this->language->get('heading_title');
		$data['refines_text'] = $this->language->get('refines_text');
		$data['brand_text'] = $this->language->get('brand_text');
		$data['price_text'] = $this->language->get('price_text');
		$data['savings_text'] = $this->language->get('savings_text');
		$data['avg_reviews_text'] = $this->language->get('avg_reviews_text');

		$data['less_than_5_text'] = $this->language->get('less_than_5_text');
		$data['between_5_10_text'] = $this->language->get('between_5_10_text');
		$data['between_10_15_text'] = $this->language->get('between_10_15_text');
		$data['between_15_30_text'] = $this->language->get('between_15_30_text');
		$data['between_30_50_text'] = $this->language->get('between_30_50_text');
		$data['between_50_100_text'] = $this->language->get('between_50_100_text');
		$data['more_than_100_text'] = $this->language->get('more_than_100_text');

		$data['up_to_25_savings_text'] = $this->language->get('up_to_25_savings_text');
		$data['between_25_50_savings_text'] = $this->language->get('between_25_50_savings_text');
		$data['between_50_75_savings_text'] = $this->language->get('between_50_75_savings_text');

		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		if (isset($parts[0])) {
			$data['category_id'] = $parts[0];
		} else {
			$data['category_id'] = 0;
		}

		if (isset($parts[1])) {
			$data['child_id'] = $parts[1];
		} else {
			$data['child_id'] = 0;
		}

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			$children_data = array();

			if ($category['category_id'] == $data['category_id']) {
				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach($children as $child) {
					$filter_data = array('filter_category_id' => $child['category_id'], 'filter_sub_category' => true);

					$children_data[] = array(
						'category_id' => $child['category_id'],
						'name' => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}
			}

			$filter_data = array(
				'filter_category_id'  => $category['category_id'],
				'filter_sub_category' => true
			);

			$data['categories'][] = array(
				'category_id' => $category['category_id'],
				'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
			);
		}

		$this->load->model('catalog/manufacturer');

		$data['manufacturers'] = $this->model_catalog_manufacturer->getAllManufacturers(); 

		return $this->load->view('extension/module/category', $data);
	}
}