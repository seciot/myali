.class Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;
.super Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest",
        "<",
        "Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchRequest;",
        "Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->m:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$900(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->n:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$1000(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->m:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$900(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest$1;-><init>(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onFail(Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rpc onFail "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->q:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$600(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->a:Z

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobileprod/core/model/BaseRespVO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->m:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$900(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobileprod/core/model/BaseRespVO;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->onFail(Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;)V

    return-void
.end method

.method public onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onRpcException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->q:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$600(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->a:Z

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->network_error_wait_retry:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->network_error_check_network:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->network_error_check_network:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRpcRequest(Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchRequest;)Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->q:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$600(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->e:Lcom/alipay/mobileprod/biz/contact/facade/MobileContactMatchService;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$700(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Lcom/alipay/mobileprod/biz/contact/facade/MobileContactMatchService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobileprod/biz/contact/facade/MobileContactMatchService;->queryBindingInfo(Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchRequest;)Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onRpcRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchRequest;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->onRpcRequest(Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchRequest;)Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->q:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$600(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;->mobileBindingList:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    iget-wide v2, p1, Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;->latestMatchTime:J

    #setter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->j:J
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$502(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;J)J

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->j:J
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$500(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->k:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$300(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->k:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$300(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->l:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$400(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->j:J
    invoke-static {v3}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$500(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #calls: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->b(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$800(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->onSuccess(Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;)V

    return-void
.end method

.method public resetShowedError()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->a:Z

    return-void
.end method
