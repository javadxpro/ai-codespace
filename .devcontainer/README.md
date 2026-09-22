## اجرای داخل GitHub Codespaces

این پروژه یک Dev Container آماده دارد. برای اینکه لازم نباشد چند دستور جداگانه اجرا کنی:

1. وارد صفحهٔ مخزن شو: https://github.com/javadxpro/ai-codespace
2. روی **Code** و سپس **Create codespace on main** کلیک کن.
3. صبر کن ساخت workspace تمام شود. فایل `.devcontainer/setup.sh`، OpenCode و Ollama را نصب می‌کند.
4. داخل ترمینال Codespace فقط این دستور را اجرا کن:

```bash
./scripts/start-agent.sh
```

این اسکریپت Ollama را اجرا می‌کند، مدل رایگان `qwen2.5-coder:7b` را دانلود می‌کند و OpenCode را باز می‌کند.

> مدل حدود چند گیگابایت دانلود دارد و اجرای مدل ۷B در Codespace ممکن است کند باشد. اگر Codespace ضعیف بود، قبل از اجرای اسکریپت مدل سبک‌تری انتخاب کن:
>
> ```bash
> OLLAMA_MODEL=phi3:mini ./scripts/start-agent.sh
> ```

برای اجرای محلی روی سیستم خودت، همان دستورهای README اصلی قابل استفاده‌اند.
