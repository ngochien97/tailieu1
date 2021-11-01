import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Login(),
    ));

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.grey[800],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/logo.png'),
                  radius: 70.0,
                ),
              ),
              SizedBox(
                height: 45.0,
              ),
              Row(
                children: [
                  Text(
                    'Đăng Nhập',
                    style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  Divider(
                    color: Colors.green,
                    height: 30.0,
                  ),
                  SizedBox(width: 40.0),
                  Text(
                    'Đăng kí',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Container(
                color: Colors.grey[200],
                height: 50.0,
                width: 400.0,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    Expanded(
                      //thẻ này sẽ chứa phần còn lại của thẻ cha
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          labelText: 'Tên đăng nhập / Số điện thoại',
                        ),
                      ),
                    ),
                    Icon(Icons.people),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                color: Colors.grey[200],
                height: 50.0,
                width: 400.0,
                child: Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Mật khẩu',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              FlatButton(
                textColor: Colors.white,
                disabledColor: Colors.green[700],
                disabledTextColor: Colors.white,
                padding: EdgeInsets.all(16.0),
                splashColor: Colors.blueAccent,
                onPressed: null,
                child: Center(
                  child: Text(
                    'ĐĂNG NHẬP',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Text(
                  //   'Quên mật khẩu?',
                  //   style: TextStyle(
                  //     color: Colors.blue,
                  //   ),
                  // ),
                  FlatButton(
                    onPressed: null,
                    child: Text(
                      'Quên mật khẩu',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
              Divider(height: 10.0, color: Colors.grey[700]),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Hoặc đăng nhập với'),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/f.png'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/m.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
