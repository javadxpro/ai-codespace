# AI Codespace

این مخزن برای شروع سریع با OpenCode و یک مدل رایگان محلی آماده شده است.

## چی داخل این مخزن هست؟
- `opencode.json`: پیکربندی OpenCode برای اتصال به مدل محلی Ollama
- `AGENTS.md`: دستورالعمل‌های پیش‌فرض برای agent
- `scripts/install-opencode.sh`: نصب OpenCode و دانلود مدل رایگان
- `.gitignore`: فایل‌های غیرضروری

## راه‌اندازی سریع

### 1) نصب OpenCode
```bash
curl -fsSL https://opencode.ai/install | bash
```

### 2) نصب Ollama
با پیروی از مستندات رسمی Ollama:
- https://ollama.com/download

### 3) دانلود مدل رایگان
```bash
ollama pull qwen2.5-coder:7b
```

### 4) اجرای سرور مدل
```bash
ollama serve
```

### 5) اجرای OpenCode
```bash
opencode
```

## پیکربندی
کد مربوط به تنظیمات در `opencode.json` قرار دارد. این فایل با مدل محلی `qwen2.5-coder:7b` تنظیم شده و به Ollama متصل می‌شود.

## اسکریپت آماده
```bash
chmod +x scripts/install-opencode.sh
./scripts/install-opencode.sh
```

## نکات
- این روش رایگان و محلی است؛ نیازی به API Key ندارید.
- اگر مدل موردنظر شما را نمی‌خواهید، نام مدل را در `opencode.json` تغییر دهید.
- برای استفاده از شبکهٔ محلی، `http://127.0.0.1:11434/v1` را همان‌طور نگه دارید.

## نمونهٔ دستورات
```bash
ollama run qwen2.5-coder:7b
opencode
```
