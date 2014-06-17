.class Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;
.super Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest",
        "<",
        "Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;",
        "Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;-><init>(Landroid/app/Activity;)V

    const-string/jumbo v0, "GetContactListResp.json"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->enableCache(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPostExecute()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->onPostExecute()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->pullRefreshFinished(Z)V

    return-void
.end method

.method public onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->showEmptyContent(Ljava/lang/String;)V

    return-void
.end method

.method public onRpcRequest(Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;)Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->g:Lcom/alipay/mobileprod/biz/transfer/TransferService;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->access$200(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;)Lcom/alipay/mobileprod/biz/transfer/TransferService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobileprod/biz/transfer/TransferService;->getContactList(Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;)Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onRpcRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->onRpcRequest(Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;)Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;

    #calls: Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->a(Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;)V
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->access$300(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$HistroryAccountsRequest;->onSuccess(Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;)V

    return-void
.end method
