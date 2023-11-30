import 'package:dio_project/routes/routes_name.dart';
import 'package:dio_project/view/home/home_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RoutesName.HomeScreen, page: () => GetDataScreen()),
//         GetPage(
//           name: RoutesName.HomeView,
//           page: () => const HomeView(),
//         ),
//         GetPage(name: RoutesName.ArticlesView, page: () => ArticlesView()),
//         GetPage(
//           name: RoutesName.BlogFullPost,
//           page: () => BlogFullPost(
//             blogData: null,
//           ),
//         ),
//         GetPage(
//           name: RoutesName.CreateBlog,
//           page: () => CreateBlog(),
//         ),
//         GetPage(
//           name: RoutesName.FullScreenCountriesDetail,
//           page: () => FullScreenCountriesDetail(),
//         ),
//         GetPage(
//           name: RoutesName.HelpView,
//           page: () => HelpView(),
//         ),
//         GetPage(
//           name: RoutesName.Login,
//           page: () => Login(),
//         ),
//         GetPage(
//           name: RoutesName.SignUp,
//           page: () => SignUp(),
//         ),
//         GetPage(
//           name: RoutesName.StatisticsView,
//           page: () => StatisticsView(),
//         ),
//         GetPage(
//           name: RoutesName.TotalView,
//           page: () => TotalView(),
//         ),
//         GetPage(
//           name: RoutesName.CountriesView,
//           page: () => CountriesView(),
//         ),
//         GetPage(
//           name: RoutesName.SymptomsView,
//           page: () => SymptomsView(),
//         ),
//         GetPage(
//           name: RoutesName.WriteArticles,
//           page: () => WriteArticles(),
//         ),
      ];
}
