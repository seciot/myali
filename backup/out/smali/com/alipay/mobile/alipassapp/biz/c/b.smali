.class final Lcom/alipay/mobile/alipassapp/biz/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/biz/c/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/biz/c/a;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/c/b;->b:Lcom/alipay/mobile/alipassapp/biz/c/a;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/biz/c/b;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/b;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/b;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    iget-boolean v0, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->success:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "1513"

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/c/b;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    iget-object v1, v1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1509"

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/c/b;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    iget-object v1, v1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/b;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/b;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v1, "1504"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/b;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultView:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/c/b;->a:Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    iget-object v1, v1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultView:Ljava/lang/String;

    invoke-static {v0, v2, v1, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
