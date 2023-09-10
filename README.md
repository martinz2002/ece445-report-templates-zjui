# A Set of Templates for All Reports Required by ECE 445 at ZJUI

ZJUI毕业设计课程所有报告（包含毕设个人报告（i.e. 毕设论文）、小组Final Report）的$\LaTeX$模板。

基于[UIUC ECE445 Template](https://courses.grainger.illinois.edu/ece445zjui/documents/445_template.zip)和毕业设计个人报告要求（见BB）制作。

## 许可

`sennior-design.cls`按LPPL许可证进行分发。

## 用法
本模板基于`book`类编写，默认使用A4尺寸、12磅字，页边距2.54cm（约1英寸）。

### $\LaTeX$基本语法
可参考：[Learn LaTeX in 30 minutes - Overleaf, Online LaTeX Editor](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)

### 新命令

**本仓库根目录下的`sample_*.tex`提供了一些开箱即用的样本，您可以根据需要填写、删除信息并编译。**

本仓库提供的一系列新命令列举如下：

#### 报告信息类

`\teammember{<FirstName>}{<LastName>}{<Email>}`用于生成**一条**带邮箱地址的组员信息。若需要组员信息显示在封面上，需结合`\authornames`命令使用。

`\name{<FirstName>}{<LastName>}`用于排版**一个**姓名。若需要组员信息显示在封面上，需结合`\authornames`命令使用。

`\nameid{<FirstName>}{<LastName>}{<StudentID>}`用于排版**一个**带学号的姓名。若需要组员信息显示在封面上，需结合`\authornames`命令使用。

`\authornames{<ListOfMembers>}`定义了需要**显示在封面上**的组员信息。

`\reporttitle{<Title>}`定义项目的标题。标题将出现在封面填写项目名称的位置上。

`\reporttype{<Type>}`定义报告的类型。**该项仅在通用报告(general report)封面上出现。**

`\semester{<Semester>}`定义报告所属的学期，如Spring 2023。将出现在封面上。

`\sponsor{<FacultyName>}`定义指导教师姓名。将出现在封面上。**该项仅在个人报告封面生效。**

`\ta{TAName}`定义分管TA的姓名。将出现在所有封面上。

`\reportdate{<Date>}`定义报告的撰写日期。将出现在所有封面上。

`\projectnumber{<Number>}`定义项目编号。**仅在Final Report和个人报告封面出现。**

`\teamnumber{<Number>}`定义组号。**仅在Final Report和通用报告封面上出现。**

#### 封面生成类

`\individualreportcover`将生成一个个人毕业设计报告的封面。个人毕业设计报告（Senior Design Individual Report）用于ZJU-UIUC联合学院本科生申请浙江大学学位。

`\finalreportcover`将生成一个Final Report的封面。

`\generalreportcover`将生成一个通用的封面（例如Individual Progress Report）。通用封面包含报告的类型（例如Individual Progress Report）和标题（填写项目名称）。

### 文献管理
本模板的引文插入依赖`biblatex`宏包，可自动生成IEEE格式引文。推荐使用开源文献管理工具Zotero（ https://zotero.org/ ）配合其附加组件BetterBibTeX（ https://github.com/retorquere/zotero-better-bibtex ）进行文件管理。BetterBibTeX允许用户将文献库中的条目导出为biblatex的参考文献文件，并可设置自动更新。在导言区使用`\addbibresource{<FileName>}`命令即可指定文档所使用的`biblatex`数据库文件。

`biblatex`宏包文档：[The biblatex Package](http://mirrors.ctan.org/macros/latex/contrib/biblatex/doc/biblatex.pdf)

IEEE格式引文参考：[IEEE Reference Guide -- IEEE Author Center](https://ieeeauthorcenter.ieee.org/wp-content/uploads/IEEE-Reference-Guide.pdf)

Zotero的使用说明：[Zotero Documentation](https://www.zotero.org/support/)

BetterBibTeX的使用说明：[Better BibTeX for Zotero :: Better BibTeX for Zotero (retorque.re)](https://retorque.re/zotero-better-bibtex/)

### 查看成品：编译

使用"xe->biber->xe->xe"，或"lua->biber->lua->lua"。

## 联系我
Email: zhongmartin@outlook.com
