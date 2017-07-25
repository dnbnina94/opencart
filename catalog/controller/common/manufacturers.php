<?php
class ControllerCommonManufacturers extends Controller {
	public function index() {
		$this->load->language('common/manufacturers');

		$data['text_manufacturers'] = $this->language->get('text_manufacturers');

		return $this->load->view('common/manufacturer', $data);
	}
}