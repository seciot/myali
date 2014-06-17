.class public Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;
.super Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;


# instance fields
.field public content:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public toUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->publicId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->toUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->createTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->toUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setToUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->toUserId:Ljava/lang/String;

    return-void
.end method
