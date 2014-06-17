.class public Lcom/alipay/mobile/alipassapp/biz/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/alipassapp/biz/a;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

.field c:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;

.field d:Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

.field private e:Landroid/os/Handler;

.field private f:Lcom/alipay/mobile/framework/app/ActivityApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/biz/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->e:Landroid/os/Handler;

    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->c:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;

    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->d:Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->f:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->f:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->f:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->c:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->f:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->d:Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

    return-void
.end method

.method private a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/c/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/biz/c/b;-><init>(Lcom/alipay/mobile/alipassapp/biz/c/a;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/ListCardMerchantReq;)Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->d:Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;->queryAvailableCardList(Lcom/alipay/kabaoprod/biz/mwallet/card/request/ListCardMerchantReq;)Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->deleteUserPass(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/c/a;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    :cond_0
    return-object v0
.end method

.method public final a()Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->queryPassInfoById(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->d:Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;->queryMemberCardInfo(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZZ)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->queryPassInfo(Ljava/lang/String;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/c/a;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->queryPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/c/a;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-object v0
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->preLoadPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->queryRemindDateByPassId(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/c/a;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->getShareContent(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/c/a;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->updateReminDate(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/c/a;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->updateRemindRealTime(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/c/a;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-object v0
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->notifyUpdateRemindStatus(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassAddResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->c:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;->asynCreateAlipass(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassAddResult;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->c:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;->addAlipass(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/c/a;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-object v0
.end method

.method public final b(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->d:Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;->createMemberCard(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->d:Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;->queryCardPreviewInfo(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareInfoResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/c/a;->b:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->getShareInfo(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareInfoResult;

    move-result-object v0

    return-object v0
.end method
