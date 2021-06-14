<?php

class AdminController
{

    public function actionEnter()
    {


        if (isset($_POST['buttonenter'])) {
            $email = trim(filter_input(INPUT_POST, 'inputEmail'));
            $password = md5(trim(filter_input(INPUT_POST, 'inputPassword')));

            $result = ValidateUser::Validate($email, $password);

            if ($result) {
                $_SESSION['email'] = $email;
            } else {
                unset($_SESSION['email']);
            }
        }

        header("Location: /admin/section");
        die();
    }

    public function actionSection()
    {
        if (ValidateUser::isValidate()) {
            AdminView::SectionForm();
        } else {
            header("Location: /admin/index");

            die();
        }
    }

    public function actionColorandsize()
    {
        if (ValidateUser::isValidate()) {
            AdminView::ColorAndSizeForm();
        } else {
            header("Location: /admin/index");

            die();
        }
    }


    public function actionBrends()
    {
        if (ValidateUser::isValidate()) {
            AdminView::BrendsForm();
        } else {
            header("Location: /admin/index");

            die();
        }
    }

    public function actionCategory()
    {
        if (ValidateUser::isValidate()) {
            AdminView::CategoriesForm();
        } else {
            header("Location: /admin/index");

            die();
        }
    }

    public function actionProducts()
    {
        if (ValidateUser::isValidate()) {
            AdminView::ProductsForm();
        } else {
            header("Location: /admin/index");
            die();
        }
    }

    public function actionIndex()
    {
        AdminView::EnterForm();
    }

    public function actionExit()
    {

        if ($_SESSION['email'] != NULL) {
            unset($_SESSION['email']);
            header("Location: /admin/index");
            die();
        }
    }



    public static function actionSectionComand($comand)
    {

        if (!ValidateUser::isValidate()) {
            header("Location: /admin/index");
            die();
        }

        switch ($comand) {
            case "getsections":
                echo json_encode(Admin::getArraySection());
                break;
            case "delsection":
                $id = intval($_POST["id"]);
                echo Admin::delSection($id);
                break;
            case "addsection":
                $obj = json_decode($_POST["obj"]);
                $newId = Admin::addSection($obj->name, $obj->sort, $obj->status);
                echo json_encode(["id" => $newId, "result" => "Ok"]);
                break;
            case "redact":
                $obj = json_decode($_POST["obj"]);
                $newId = Admin::addSection($obj->name, $obj->sort, $obj->status);
                echo Admin::redactSection($obj);
                break;
            default:
                break;
        }
    }

    public static function actionCategoryComand($comand)
    {

        if (!ValidateUser::isValidate()) {
            header("Location: /admin/index");
            die();
        }

        switch ($comand) {
            case "getcategory":
                echo json_encode(Admin::getArrayCategory());
                break;
            case "delcategory":
                $id = intval($_POST["id"]);
                echo Admin::delCategory($id);
                break;
            case "addcategory":
                $obj = json_decode($_POST["obj"]);
                $newId = Admin::addCategory($obj->name, $obj->section, $obj->sort, $obj->status);
                echo json_encode(["id" => $newId, "result" => "Ok"]);
                break;
            case "redact":
                $obj = json_decode($_POST["obj"]);
                $newId = Admin::addCategory($obj->name, $obj->sort, $$obj->status);
                echo Admin::redactCategory($obj);
                break;
            default:
                break;
        }
    }

    public static function actionBrendsComand($comand)
    {

        if (!ValidateUser::isValidate()) {
            header("Location: /admin/index");
            die();
        }

        switch ($comand) {
            case "getbrends":
                echo json_encode(Admin::getArrayBrend());
                break;
            case "delbrends":
                $id = intval($_POST["id"]);
                echo Admin::delBrend($id);
                break;
            case "addbrends":
                $obj = json_decode($_POST["obj"]);
                $newId = Admin::addBrend($obj->name, $obj->sort, $obj->status, $obj->section);
                echo json_encode(["id" => $newId, "result" => "Ok"]);
                break;
            case "redact":
                $obj = json_decode($_POST["obj"]);
                $newId = Admin::addBrend($obj->name, $obj->sort, $$obj->status);
                echo Admin::redactBrend($obj);
                break;
            default:
                break;
        }
    }

    public static function actionColorAndSizeComand($comand)
    {

        if (!ValidateUser::isValidate()) {
            header("Location: /admin/index");
            die();
        }

        switch ($comand) {
            case "getcolor":
                echo json_encode(Admin::getArrayColor());
                break;
            case "delcolor":
                $id = intval($_POST["id"]);
                echo Admin::delColor($id);
                break;
            case "addcolor":
                $obj = json_decode($_POST["obj"]);
                $newId = Admin::addColor($obj->name, $obj->red, $obj->green, $obj->blue, $obj->code);
                echo json_encode(["id" => $newId, "result" => "Ok"]);
                break;

            case "getsize":
                echo json_encode(Admin::getArraySize());
                break;
            case "delsize":
                $id = intval($_POST["id"]);
                echo Admin::delSize($id);
                break;
            case "addsize":
                $obj = json_decode($_POST["obj"]);
                $newId = Admin::addSize($obj->name);
                echo json_encode(["id" => $newId, "result" => "Ok"]);
                break;
            default:
                break;
        }
    }

    public static function actionProductsComand($comand)
    {

        if (!ValidateUser::isValidate()) {
            header("Location: /admin/index");
            die();
        }

        switch ($comand) {
            case "getcolor":
                echo json_encode(Admin::getArrayColor());
                break;
            case "delcolor":
                $id = intval($_POST["id"]);
                echo Admin::delColor($id);
                break;
            case "addcolor":
                $obj = json_decode($_POST["obj"]);
                $newId = Admin::addColor($obj->name, $obj->red, $obj->green, $obj->blue, $obj->code);
                echo json_encode(["id" => $newId, "result" => "Ok"]);
                break;

            case "getsize":
                echo json_encode(Admin::getArraySize());
                break;
            case "delsize":
                $id = intval($_POST["id"]);
                echo Admin::delSize($id);
                break;
            case "addsize":
                $obj = json_decode($_POST["obj"]);
                $newId = Admin::addSize($obj->name);
                echo json_encode(["id" => $newId, "result" => "Ok"]);
                break;
            default:
                break;
        }
    }
}
