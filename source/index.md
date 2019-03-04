---
title: 开始使用MabuDoc
description: MabuDoc的安装和应用
---

MabuDoc 是基于 [Hexo](https://hexo.io/zh-cn/docs/) 和 [Node](https://nodejs.org/) 构成的高效静态站点框架。你可以在 [Hexo 的官方文档](https://hexo.io/zh-cn/docs/) 了解如何安装 Hexo、生成一个站点。

> 在这篇文档中，我们假定你已经成功安装了 Node 和 Hexo，**并使用 Hexo 提供的命令创建了一个站点。**

在 Hexo 中，通常有两份配置文件，一个是站点根目录下的 `_config.yml`；另外一个是主题目录下的 `_config.yml`。 为了描述方便，在以下说明中，将前者称为 `站点配置文件`，后者称为 `主题配置文件`。

在使用「MabuDoc」主题之前，请仔细阅读 [Hexo 的官方文档](https://hexo.io/zh-cn/docs/)，完成对 Hexo 的安装，并完成对 `站点配置文件` 的基本配置（标题、介绍、作者、时区、语言等）。

# 下载「MabuDoc」

[下载最新 Release 版本](https://github.com/hand-mabu/hexo-mabu-doc/releases/)

> 最新的释出版本，适合大部分用户。

选择你所需要的版本，在新打开的页面中找到 Assets 区域，下载 Source Code (zip) 到本地。
以下载 1.0.0 版本为例

解压所下载的压缩包至个人目录下， 并将 解压后的文件夹名称 更改为 `mabuDoc`（推荐）。

----

[使用 Git](https://github.com/hand-mabu/hexo-mabu-doc)

> 你可以自己决定想要使用的分支；使用 Git 下载「MabuDoc」以后还可以使用 `git pull` 更新「MabuDoc」。

```bash
git clone -b dev https://github.com/hand-mabu/hexo-mabu-doc.git mabuDoc
cd mabuDoc
git checkout {branch/tags name/commit hash}
```

# 安装「MabuDoc」

和其他主题不同，安装「MabuDoc」需要额外的步骤；前往「MabuDoc」主题目录下执行 `npm install` 指令安装「MabuDoc」运行时所必须的依赖。

```bash
cd mabuDoc
npm install
```

目前你的 `站点配置文件` 应该是这样：

```yaml
# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
theme: mabuDoc
```

# 运行「MabuDoc」

在站点根目录下运行下面的命令在本地启动一个 Hexo Server。

```bash
hexo s
```

> 在服务启动的过程，注意观察命令行输出是否有任何异常信息，如果你碰到问题，这些信息将帮助他人更好的定位错误。

当命令行输出下述内容时说明 Hexo 已经监听在本机的 4000 端口，使用浏览器访问 http://localhost:4000 ，检查站点是否正确运行。

```
INFO  Hexo is running at http://localhost:4000/. Press Ctrl+C to stop.
```

> 如果你在使用过程中遇到问题，请尝试在文档左侧菜单中进行搜索，或者在 GitHub 上 [提出 issue](https://github.com/hand-mabu/hexo-mabu-doc/issues)

# 更新「MabuDoc」

如果你是在 版本发布页 下载并安装的「MabuDoc」，那么你需要备份你的 `站点配置文件` `主题配置文件` `source文件夹` ，然后将旧的主题文件夹命名为 `mabuDoc-old`，将下载的新版本「MabuDoc」重命名为 `mabuDoc`，根据更新日志的指导迁移旧的 `站点配置文件` `主题配置文件` `source文件夹` 到新的 `站点配置文件` `主题配置文件` `source文件夹` 中。测试通过后你可以将 `mabuDoc-old` 删除。

----

如果你使用 Git 安装的「MabuDoc」，你可以直接在主题文件夹下运行 `git pull` 更新主题，并把备份之前的 `站点配置文件` `主题配置文件` 都重命名为 `_config.old.yml`。从 `_config.old.yml` 迁移你的配置到新的 `_config.yml`测试通过后你可以将 `_config.old.yml` 删除。
