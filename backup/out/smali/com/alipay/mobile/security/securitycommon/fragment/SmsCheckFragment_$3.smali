.class Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$3;->c:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$3;->a:Ljava/lang/Object;

    iput p3, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$3;->c:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$3;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_$3;->b:I

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;->a(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment_;Ljava/lang/Object;I)V

    return-void
.end method
