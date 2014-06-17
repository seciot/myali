.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->newEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeMapping(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return v0
.end method
