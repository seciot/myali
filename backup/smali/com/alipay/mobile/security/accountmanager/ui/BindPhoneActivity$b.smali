.class final Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;I)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->b:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->b:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->E(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->F(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->G(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->H(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
