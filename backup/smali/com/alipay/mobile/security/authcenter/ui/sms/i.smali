.class final Lcom/alipay/mobile/security/authcenter/ui/sms/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/i;->b:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/i;->a:Ljava/lang/String;

    const-string/jumbo v1, "1\\d{10}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/i;->b:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/sms/i;->b:Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/sms/SMSSendFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "\u624b\u673a\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
