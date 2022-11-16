import 'package:get/get.dart';
import 'package:getx_pattern/app/data/model/model.dart';
import 'package:getx_pattern/app/data/repository/posts_repository.dart';
import 'package:getx_pattern/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final MyRepository repository;

  HomeController({required this.repository}) : assert(repository != null);

  final _postsList = <MyModel>[].obs;

  get postList => _postsList.value;

  set postList(value) => _postsList.value = value;

  final _post = MyModel().obs;

  get post => _post.value;

  set post(value) => _post.value = value;

  getAll() {
    repository.getAll().then((data) {
      postList = data;
    });
  }

  adicionar(post) {}

  //dismissible
  excluir(id) {}

  //dismissible
  editar() {}

  details(post) {
    this.post = post;
    Get.toNamed(Routes.DETAILS);
  }
}
