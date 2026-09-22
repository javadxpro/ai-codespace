# AI Codespace

این مخزن اکنون یک agent رایگان و واقعی برای OpenCode دارد که با Ollama به‌صورت محلی اجرا می‌شود؛ بنابراین API Key یا سرویس پولی لازم نیست.

## فایل‌های agent

- `.opencode/agents/free-coder.md`: agent اصلی برای کدنویسی
- `.opencode/agents/reviewer.md`: agent بازبینی فقط‌خواندنی
- `opencode.json`: اتصال OpenCode به Ollama و مدل `qwen2.5-coder:7b`
- `scripts/setup-free-agent.sh`: دانلود مدل رایگان

## راه‌اندازی

### نصب Ollama

از https://ollama.com/download نصب کنید، سپس در ریشهٔ مخزن اجرا کنید:

```bash
chmod +x scripts/setup-free-agent.sh
./scripts/setup-free-agent.sh
```

### اجرای agent

در یک ترمینال Ollama را اجرا کنید:

```bash
ollama serve
```

در ترمینال دوم، داخل همین مخزن OpenCode را اجرا کنید:

```bash
opencode
```

agent پیش‌فرض `free-coder` است. برای استفاده از بازبین، agent `reviewer` را انتخاب کنید.

## نصب OpenCode

اگر OpenCode نصب نیست:

```bash
curl -fsSL https://opencode.ai/install | bash
```

## نکتهٔ سخت‌افزاری

مدل ۷B به RAM و فضای دیسک مناسب نیاز دارد. برای سیستم ضعیف‌تر می‌توانید قبل از اجرا مدل سبک‌تری نصب کنید و متغیر زیر را تنظیم کنید:

```bash
OLLAMA_MODEL=phi3:mini ./scripts/setup-free-agent.sh
```

در این حالت باید نام مدل در `opencode.json` و فایل agent نیز مطابق مدل نصب‌شده تغییر کند.

## حریم خصوصی و هزینه

پردازش مدل روی سیستم خودتان انجام می‌شود و این تنظیمات به API پولی متصل نیست. سرعت و کیفیت به سخت‌افزار و مدل دانلودشده بستگی دارد.
