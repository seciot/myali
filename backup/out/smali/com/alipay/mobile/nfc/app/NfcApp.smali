.class public Lcom/alipay/mobile/nfc/app/NfcApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# static fields
.field public static final NFC_APP_ID:Ljava/lang/String; = "20000071"


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Lcom/alipay/mobile/nfc/strategy/AlipayAction;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->c:Z

    return-void
.end method

.method private a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v0, v3, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-le v3, v1, :cond_3

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->b:Lcom/alipay/mobile/nfc/strategy/AlipayAction;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nfc/strategy/AlipayAction;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "alipays-beam"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    const-string/jumbo v4, "Key_beam_content"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParam()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    new-instance v0, Lcom/alipay/mobile/nfc/strategy/AlipayAction;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/strategy/AlipayAction;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->b:Lcom/alipay/mobile/nfc/strategy/AlipayAction;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    :cond_0
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/nfc/app/NfcApp;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/app/NfcApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
