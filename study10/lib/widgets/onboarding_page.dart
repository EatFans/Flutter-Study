import 'package:flutter/material.dart';

// 软件引导轮播功能页面部件widget
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  final PageController _pageController = PageController();

  int _currentPage = 0;

  // 引导页面内容
  final List<Map<String, String>> _pagesContent = [
    {
      "title": "引导界面1",
      "desc": "这是一个xxxxxx的xxxx",
      "img": "assets/images/img1.png"
    },
    {
      "title": "引导界面2",
      "desc": "这是一个xxxxxx的xxxx",
      "img": "assets/images/img2.png"
    },
    {
      "title": "引导界面3",
      "desc": "这是一个xxxxxx的xxxx",
      "img": "assets/images/img3.png"
    },
    {
      "title": "引导界面4",
      "desc": "这是一个xxxxxx的xxxx",
      "img": "assets/images/img4.png"
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 使用PageView 轮播
          PageView.builder(
            controller: _pageController,
              itemCount: _pagesContent.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(height: 50),

                    // 图片
                    Image.asset(
                      _pagesContent[index]["img"]!,
                      height: 200,
                    ),

                    // 文本区
                    SizedBox(
                      child: Column(
                        children: [
                          Text(
                            _pagesContent[index]["title"]!,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                            ),
                          ),

                          const SizedBox(height: 10),

                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              _pagesContent[index]["desc"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                              ),
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                );
              }
          ),

          // 底部导航指示器 + 按钮
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // 左边占位，撑开空间
                  const SizedBox(width: 100),

                  // 小圆点指示器
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _pagesContent.length,
                        (index) => AnimatedContainer(
                            duration: Duration(microseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: _currentPage == index ? 12 : 8,
                          height: _currentPage == index ? 12 : 8,
                          decoration: BoxDecoration(
                            color: _currentPage == index ? Colors.blue : Colors.grey,
                            shape: BoxShape.circle
                          )
                        )
                    ),
                  ),

                  // 按钮
                  TextButton(
                    onPressed: () {
                      _pageController.jumpToPage(_currentPage + 1);
                    },
                    child: Text(
                      _currentPage == _pagesContent.length - 1 ? "开始使用" : "继续",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Colors.black, // 你可以换成任何想要的颜色
                      ),
                    ),
                  )

                ],
              ),
            )
          )
        ],
      )
    );
  }
}
