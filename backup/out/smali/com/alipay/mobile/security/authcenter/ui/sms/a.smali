.class final Lcom/alipay/mobile/security/authcenter/ui/sms/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/a;->a:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/a;->a:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSReceiveFragment;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->c(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
