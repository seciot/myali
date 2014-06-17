.class Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-static {v0, p2}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;I)I

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->f(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)Lcom/alipay/mobile/commonui/widget/APTableView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->e(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->g(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
