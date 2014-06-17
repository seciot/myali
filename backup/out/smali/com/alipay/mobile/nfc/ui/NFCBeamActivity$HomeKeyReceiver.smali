.class Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$HomeKeyReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$HomeKeyReceiver;->a:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$HomeKeyReceiver;-><init>(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$HomeKeyReceiver;->a:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->finish()V

    :cond_0
    return-void
.end method
