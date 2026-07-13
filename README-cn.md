<sub>🌐 <a href="README.md">English</a> · <b>中文</b></sub>

# Kyber Physics

> *从牛顿到量子的物理学——为控制论技术栈而建。*

[![Ko-fi](https://img.shields.io/badge/Support-ko--fi-FF5E5B?style=flat&logo=ko-fi&logoColor=white)](https://ko-fi.com/requiema)
[![Afdian](https://img.shields.io/badge/Support-爱发电-946CE6?style=flat)](https://afdian.com/a/requiema)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Jupyter Book](https://img.shields.io/badge/Jupyter_Book-🔧-blue)](https://jupyterbook.org/)

<br>

[快速开始](#快速开始) · [能做什么](#能做什么) · [目录结构](#目录结构)

---

## 快速开始

```bash
git clone https://github.com/RequieMa/kyber-physics
cd kyber-physics
uv sync && uv run jupyter book build
```

### 字数统计工具

追踪每章字数：

```bash
uv run python tools/wordcount.py              # 列出所有章节及字数
uv run python tools/wordcount.py --lang zh    # 仅中文章节
uv run python tools/wordcount.py --lang en    # 仅英文章节
```

工具会剔除 markdown 语法、代码块、数学公式和指令 — 仅统计纯文本字数。
草稿目录（`book/draft/`）默认排除。

---

## 能做什么 / 这里有什么

<!-- | 章节 | 内容 | 状态 |
|------|------|------|
| 1 · 牛顿力学 | 运动学、动力学、守恒律、刚体 | 🚧 草稿 |
| 2 · 分析力学 | 拉格朗日、哈密顿、变分原理 | 🚧 草稿 |
| 3 · 电磁学 | 麦克斯韦方程、场、波 | 🚧 草稿 |
| 4 · 电路与电子学 | 交直流电路、放大器、滤波器 | 🚧 草稿 |
| 5 · 光学 | 几何光学、波动光学、傅里叶光学 | 🚧 草稿 |
| 6 · 信号与系统 | 傅里叶/拉普拉斯变换、采样、滤波 | 🚧 草稿 |
| 7 · 量子力学 | 波函数、算符、测量 | 📋 计划中 | -->

---

## 仓库结构

```
kyber-physics/
├── book/
│   ├── en/                   # 英文章节（待构建）
│   ├── zh/                   # 中文章节
│   └── draft/                # 开发中的内容
├── tools/
│   └── wordcount.py          # 章节字数统计工具
├── about.md                  # 关于本书与作者
├── contact.md                # 联系方式
├── privacy.md                # 隐私政策
├── terms.md                  # 服务条款
├── myst.yml                  # MyST 配置
├── pyproject.toml            # 项目元数据和依赖
└── README.md
```

---

## Connect · 关于作者

<div align="center">

| | | |
|---|---|---|
| 📧 | Email | [mazengou@gmail.com](mailto:mazengou@gmail.com) |
| 🌐 | Personal Site | [requiema.github.io](https://requiema.github.io) |
| 📝 | dev.to | [dev.to/requiema](https://dev.to/requiema) |
| 𝕏 | X | [x.com/mazengou](https://x.com/mazengou) |
| 👾 | Reddit | [u/Leather_Rip7919](https://www.reddit.com/user/Leather_Rip7919/) |
| 🔖 | 掘金 | [juejin.cn/user/76300220645242](https://juejin.cn/user/76300220645242) |
| 📦 | Gitee | [gitee.com/requiema](https://gitee.com/requiema) |
| 📖 | 知乎 | [zhihu.com/people/consilivm](https://www.zhihu.com/people/consilivm) |
| 🎬 | Bilibili | 镇魂曲麦 |
| 📱 | 公众号 | 镇魂曲麦 |

</div>
