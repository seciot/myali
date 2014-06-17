.class final Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;I)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;->b:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;->b:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->h(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->i(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->j(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->i(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->k(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->i(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
