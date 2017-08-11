<?php
class ControllerExtensionModuleFeatured3 extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/featured3');

		$data['heading_title'] = $this->language->get('heading_title');
		$data['heading_description'] = $this->language->get('heading_description');
		$data['email_placeholder'] = $this->language->get('email_placeholder');
		$data['submit_btn'] = $this->language->get('submit_btn');
		$data['text_vip_offers'] = $this->language->get('text_vip_offers');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');
		$this->load->model('blog/article');

		$this->load->model('tool/image');

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		if (!empty($setting['article'])) {
            $articles = array_slice($setting['article'], 0, (int)$setting['limit']);
            var_dump($articles);
			foreach ($articles as $article_id) {
				$product_info = $this->model_blog_article->getArticle($article_id);

				if ($product_info) {
/*		    		if ($product_info['image']) {
						$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}
*/


					$data['products'][] = array(
						'product_id'  => $product_info['article_id'],
						'thumb'       => "http://localhost/opencart/image/cache/catalog/demo/product/slika%20proizvoda%202-300x250.png",
						'name'        => $product_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
						'href'        => $this->url->link('blog/article', 'article_id=' . $product_info['article_id'])
					);
				}
			}
		}

		if ($data['products']) {
			return $this->load->view('extension/module/featured3', $data);
		}
	}
}