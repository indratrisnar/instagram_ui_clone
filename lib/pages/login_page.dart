import 'package:flutter/material.dart';

import '../config/app_asset.dart';
import '../config/nav.dart';
import 'dashboard/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.navigate_before,
            color: Theme.of(context).iconTheme.color,
            size: 30,
          ),
        ),
      ),
      body: LayoutBuilder(builder: (context, constrainsts) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constrainsts.maxHeight,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isDark
                        ? AppAsset.instagramLogoDark
                        : AppAsset.instagramLogo,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  const SizedBox(height: 40),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: isDark
                              ? const Color(0xff121212)
                              : Colors.grey[200]!,
                          width: 0.5,
                        ),
                      ),
                      hintText: 'Username',
                      isDense: true,
                      fillColor:
                          isDark ? const Color(0xff121212) : Colors.grey[100]!,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: isDark
                              ? const Color(0xff121212)
                              : Colors.grey[200]!,
                          width: 0.5,
                        ),
                      ),
                      hintText: 'Password',
                      isDense: true,
                      fillColor:
                          isDark ? const Color(0xff121212) : Colors.grey[100]!,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Nav.push(context, const DashboardPage());
                      },
                      child: const Text('Log in'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAsset.facebookIcon,
                            width: 17,
                            height: 17,
                          ),
                          const SizedBox(width: 8),
                          const Text('Log in with Facebook'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Expanded(child: Divider(endIndent: 20)),
                      Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Expanded(child: Divider(indent: 20)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Sign up.'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                width: 0.5,
                color: isDark ? Colors.grey[900]! : Colors.grey[400]!),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
        child: Text(
          'Instagram from Facebook',
          style: TextStyle(color: Colors.grey[600], fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
