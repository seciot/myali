.class final Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v4, 0xa

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->b:I

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->z(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->b:I

    if-ge v2, v4, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->q(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->b:I

    if-ge v2, v4, :cond_2

    const-string/jumbo v2, "709"

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->q(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->b:I

    if-ne v2, v4, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->q(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->A(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->b:I

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->q(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
