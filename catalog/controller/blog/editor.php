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
