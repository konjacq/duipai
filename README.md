# 对拍 duipai

本项目目标是创建一个方便的 windows 下对拍环境.  
The goal of this project is to create a convenient environment for match under windows.

## 部署 Deployment

仅限于 windows 系统.请确保已正确配置 gcc 且支持 c++11 及以上版本.  
Only for windows system. Please make sure that gcc is configured correctly and supports c++11 and above.

请将整个文件夹放在任何方便的地方:)  
Please put the entire folder wherever convenient.

## 使用 Use

### 准备 Preparation

将要验证的代码和正确的代码分别命名为`test.cpp`和`right.cpp`并放在`source`文件夹下.  
Name the code to be verified and the correct code as `test.cpp` and `right.cpp` and put them in the `source` folder.

修改`source/mk_data.cpp`,在其中生成数据,将生成的输入数据输出到`testdata.in`(已配置`freopen`).  
Modify `source/mk_data.cpp`, generate data in it, and output the generated input data to `testdata.in` (`freopen` is configured).

### 运行 Run

双击`duipai.bat`,过程中会出现某些运行信息(不懂就问<https://translate.google.cn/>).  
Double-click `.duipai.bat`, some operating information will appear during the process.

### 查看结果 View Results

如果编译成功而要结束运行请按`Ctrl+C`或者关掉控制台.  
If the compilation is successful and you want to end the operation, press `Ctrl+C` or close the console.

- 如果编译错误,可以在`compinfo.txt`中找到编译信息.
- 否则可以在`testlog.txt`中找到错误信息,包括:
  - 错误点编号;
  - 对应保存的数据点编号.
- 错误数据保存在`testdata`目录下,第`i`个点命名为`testdatax.in/out/ans`.
- If the compilation is wrong, you can find the compilation information in `compinfo.txt`.
- Otherwise, you can find error messages in `testlog.txt`, including:
  - Error point number;
  - Corresponding to the saved data point number.
- The error data is saved in the `testdata` directory, and the `i` point is named as `testdatax.in/out/ans`.

## TODO

- [ ] 增加查看运行时间功能.
- [ ] 重定向`mk_data.cpp`的I/O.
- [ ] 更好看的输出界面.