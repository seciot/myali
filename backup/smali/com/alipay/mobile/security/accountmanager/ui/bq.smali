.class final Lcom/alipay/mobile/security/accountmanager/ui/bq;
.super Landroid/text/method/NumberKeyListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bq;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getAcceptedChars()[C
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x78t 0x0t
        0x58t 0x0t
    .end array-data
.end method

.method public final getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
