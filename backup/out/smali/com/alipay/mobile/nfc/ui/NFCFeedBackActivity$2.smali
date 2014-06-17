.class Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->b(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    const-string/jumbo v1, "\u8bf7\u9009\u62e9\u5361\u7c7b\u522b"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->c(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    const-string/jumbo v1, "\u8bf7\u586b\u5199\u53d1\u9001\u5355\u4f4d\u540d\u79f0"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)V

    goto :goto_0
.end method
