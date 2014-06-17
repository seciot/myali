.class final Lcom/alipay/mobile/about/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/e;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/e;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->a(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalFacade;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/e;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    invoke-static {v1}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->f(Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;)Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;

    move-result-object v1

    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalFacade;->saveUserProposalInfo(Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;)Lcom/alipay/mobileapp/common/service/facade/about/UserProposalRes;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalRes;->resultStatus:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    iget v0, v0, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalRes;->resultStatus:I

    const/16 v1, 0x138a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/e;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/e;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->V:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/e;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->e:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/about/ui/f;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/about/ui/f;-><init>(Lcom/alipay/mobile/about/ui/e;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/e;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    const-string/jumbo v1, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getLocalizedMessage()Ljava/lang/String;

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/e;->a:Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;

    const-string/jumbo v1, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    invoke-virtual {v0, v1, v7}, Lcom/alipay/mobile/about/ui/AboutFeedbackActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
