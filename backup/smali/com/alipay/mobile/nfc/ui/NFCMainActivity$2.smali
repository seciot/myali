.class Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    const-class v4, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
