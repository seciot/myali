.class public Lcom/alipay/mobile/nfc/ui/NFCMainActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/nfc/model/CardInfo;

.field private c:Landroid/app/AlertDialog;

.field private d:Z

.field private e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

.field private f:Landroid/nfc/tech/IsoDep;

.field private g:Lcom/alipay/mobile/nfc/strategy/AlipayAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NFC/Main"

    sput-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Landroid/nfc/tech/IsoDep;)Landroid/nfc/tech/IsoDep;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f:Landroid/nfc/tech/IsoDep;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Lcom/alipay/nfc/model/CardInfo;)Lcom/alipay/nfc/model/CardInfo;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v0, v3, :cond_1

    :try_start_0
    const-string/jumbo v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NDEF_DISCOVERED - msgs:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v3, v0

    if-eqz v3, :cond_1

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

    sget-object v3, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "payload[0]="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseNdefMessage url:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->g:Lcom/alipay/mobile/nfc/strategy/AlipayAction;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nfc/strategy/AlipayAction;->a(Ljava/lang/String;)V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    sget-object v3, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "alipays-beam"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "Key_beam_content"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/nfc/model/CardInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u8be5\u5361\u6682\u65f6\u65e0\u6cd5\u8bc6\u522b\uff0c\u662f\u5426\u613f\u610f\u4e0a\u62a5\u5361\u7c7b\u578b\u4fe1\u606f\uff0c\u4ee5\u652f\u6301\u6211\u4eec\u540e\u7eed\u4f18\u5316?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u786e\u5b9a"

    new-instance v3, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;-><init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$1;-><init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e()V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->f()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showCardData - \u5361\u7c7b\u578b\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$3;->a:[I

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->UnknowCard:Lcom/alipay/nfc/model/CardTypeEnum;

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-virtual {p0, v1, v3}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nfc/app/LogAgent;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nfc/app/LogAgent;->b(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "busCardDispatch:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BeijingMunicipal"

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;

    invoke-virtual {p0, v1, v3}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->f()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nfc/app/LogAgent;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-class v1, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;

    invoke-virtual {p0, v1, v3}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    goto :goto_2

    :cond_3
    const-class v1, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;

    invoke-virtual {p0, v1, v3}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nfc/app/LogAgent;->b(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/alipay/nfc/model/CardInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addNewFragment:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_0
    sget v2, Lcom/alipay/mobile/nfc/R$id;->E:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f:Landroid/nfc/tech/IsoDep;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCreate:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "savedInstanceState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    new-instance v0, Lcom/alipay/mobile/nfc/strategy/AlipayAction;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nfc/strategy/AlipayAction;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->g:Lcom/alipay/mobile/nfc/strategy/AlipayAction;

    sget v0, Lcom/alipay/mobile/nfc/R$layout;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nfc/app/LogAgent;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/nfc/ui/frgment/StartupFragment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDestroy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onNewIntent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setIsPrevent(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/nfc/app/NfcApp;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/nfc/app/NfcApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/app/NfcApp;->getParam()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.nfc.extra.TAG"

    const-string/jumbo v3, "android.nfc.extra.TAG"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;-><init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;B)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    new-array v2, v5, [Landroid/content/Intent;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onPause()V

    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    return-void
.end method
