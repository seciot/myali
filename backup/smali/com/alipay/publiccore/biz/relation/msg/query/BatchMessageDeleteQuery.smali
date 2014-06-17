.class public Lcom/alipay/publiccore/biz/relation/msg/query/BatchMessageDeleteQuery;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;


# instance fields
.field public deleteQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleteQueries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BatchMessageDeleteQuery;->deleteQueries:Ljava/util/List;

    return-object v0
.end method

.method public setDeleteQueries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BatchMessageDeleteQuery;->deleteQueries:Ljava/util/List;

    return-void
.end method
