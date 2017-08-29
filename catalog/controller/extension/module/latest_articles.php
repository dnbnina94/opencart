<?php
class ControllerExtensionModuleLatestArticles extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/latest_articles');

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

		$data['latest_blogs'] = $this->model_blog_article->getNewestArticles();

		foreach ($data['latest_blogs'] as &$blog) {
			$blog['image'] = $this->model_tool_image->get_image($blog['image']);
			$blog['href']  = $this->url->link('blog/article', 'article_id=' . $blog['article_id']);
			$blog['intro_text'] = utf8_substr(strip_tags(html_entity_decode($blog['intro_text'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..'; 
		} 

		return $this->load->view('extension/module/latest_articles', $data);
	}
}