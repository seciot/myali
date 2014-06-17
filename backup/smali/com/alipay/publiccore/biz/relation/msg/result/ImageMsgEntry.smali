.class public Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;
.super Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;


# instance fields
.field public articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;",
            ">;"
        }
    .end annotation
.end field

.field public createTime:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public showType:Ljava/lang/String;

.field public toUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->publicId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->toUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->createTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->showType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->articles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getArticles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->articles:Ljava/util/List;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->showType:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->toUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setArticles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->articles:Ljava/util/List;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setShowType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->showType:Ljava/lang/String;

    return-void
.end method

.method public setToUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->toUserId:Ljava/lang/String;

    return-void
.end method
