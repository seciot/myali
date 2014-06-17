.class Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$4;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$4;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->b(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/common/service/facade/about/UserProposalFacade;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$4;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->h(Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;)Lcom/alipay/mobileapp/common/service/facade/about/UserProposalReq;

    move-result-object v1

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
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$4;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    const-string/jumbo v1, "\u63d0\u4ea4\u6210\u529f\uff0c\u611f\u8c22\u60a8\u7684\u53cd\u9988"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$4;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity$4;->a:Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    const-string/jumbo v1, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
