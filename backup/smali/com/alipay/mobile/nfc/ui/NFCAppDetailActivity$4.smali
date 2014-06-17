.class Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$4;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$4;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$4;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->b(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadApp()V

    return-void
.end method
