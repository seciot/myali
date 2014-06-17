.class public Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryResult;
.super Ljava/lang/Object;


# instance fields
.field public maxShowCount:I

.field public reminds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/statusbar/common/sal/mobilegw/TodoRemind;",
            ">;"
        }
    .end annotation
.end field

.field public resultCode:I

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxShowCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryResult;->maxShowCount:I

    return v0
.end method

.method public getReminds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/statusbar/common/sal/mobilegw/TodoRemind;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryResult;->reminds:Ljava/util/List;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryResult;->resultCode:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryResult;->totalCount:I

    return v0
.end method

.method public setMaxShowCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryResult;->maxShowCount:I

    return-void
.end method

.method public setReminds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/statusbar/common/sal/mobilegw/TodoRemind;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryResult;->reminds:Ljava/util/List;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryResult;->resultCode:I

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/statusbar/common/sal/mobilegw/TodoQueryResult;->totalCount:I

    return-void
.end method
