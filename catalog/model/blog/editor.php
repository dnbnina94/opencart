<?php
class ModelBlogEditor extends Model {
	public function getEditor($editor_id) {
        $sql = "SELECT * FROM `" . DB_PREFIX . "user` WHERE user_id = $editor_id";

        $query = $this->db->query($sql);

        return $query->rows;
	}

    public function getOurEditors () {
        $sql = "SELECT * FROM `" . DB_PREFIX . "user` WHERE user_group_id = 11";

        $query = $this->db->query($sql);

        return $query->rows;
    }
}
