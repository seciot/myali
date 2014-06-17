.class public Lcom/taobao/securityjni/tools/DataContext;
.super Ljava/lang/Object;


# instance fields
.field public category:I

.field public extData:Ljava/lang/Object;

.field public index:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    iput v1, p0, Lcom/taobao/securityjni/tools/DataContext;->category:I

    iput v1, p0, Lcom/taobao/securityjni/tools/DataContext;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    iput-object p2, p0, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    iput-object p2, p0, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    iput p3, p0, Lcom/taobao/securityjni/tools/DataContext;->category:I

    iput p4, p0, Lcom/taobao/securityjni/tools/DataContext;->type:I

    return-void
.end method
