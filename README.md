# reddit

Reddit 搜索与阅读 skill，适合看帖子、评论和社区反馈。

## 用途

- 搜索 Reddit 帖子
- 阅读帖子正文和评论
- 查看 subreddit、热门帖、用户帖子和评论
- 获取真实用户反馈、 bug 报告、方案对比

## 安装

直接跑安装脚本，它会把这个 skill 需要的东西装进自己的 `.venv` 里：

```bash
bash scripts/install.sh
```

## 校验

```bash
bash scripts/check.sh
```

## 常用命令

```bash
/root/.openclaw/workspace/skills/reddit/.venv/bin/rdt search "netcup review"
/root/.openclaw/workspace/skills/reddit/.venv/bin/rdt read POST_ID
/root/.openclaw/workspace/skills/reddit/.venv/bin/rdt sub selfhosted
/root/.openclaw/workspace/skills/reddit/.venv/bin/rdt popular
```
