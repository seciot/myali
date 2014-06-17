.class public Lcom/alibaba/fastjson/JSONWriter$Context;
.super Ljava/lang/Object;


# instance fields
.field private final parent:Lcom/alibaba/fastjson/JSONWriter$Context;

.field private state:Lcom/alibaba/fastjson/JSONWriter$State;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONWriter$Context;Lcom/alibaba/fastjson/JSONWriter$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONWriter$Context;->parent:Lcom/alibaba/fastjson/JSONWriter$Context;

    iput-object p2, p0, Lcom/alibaba/fastjson/JSONWriter$Context;->state:Lcom/alibaba/fastjson/JSONWriter$State;

    return-void
.end method


# virtual methods
.method public getParent()Lcom/alibaba/fastjson/JSONWriter$Context;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter$Context;->parent:Lcom/alibaba/fastjson/JSONWriter$Context;

    return-object v0
.end method

.method public getState()Lcom/alibaba/fastjson/JSONWriter$State;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter$Context;->state:Lcom/alibaba/fastjson/JSONWriter$State;

    return-object v0
.end method

.method public setState(Lcom/alibaba/fastjson/JSONWriter$State;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONWriter$Context;->state:Lcom/alibaba/fastjson/JSONWriter$State;

    return-void
.end method
