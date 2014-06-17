.class public Lcom/alipay/publiccore/biz/relation/msg/result/ListMessageResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;


# instance fields
.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public publicId:Ljava/lang/String;

.field public total:Ljava/lang/Integer;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ListMessageResult;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ListMessageResult;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ListMessageResult;->total:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ListMessageResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ListMessageResult;->messages:Ljava/util/List;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ListMessageResult;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ListMessageResult;->total:Ljava/lang/Integer;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ListMessageResult;->userId:Ljava/lang/String;

    return-void
.end method
