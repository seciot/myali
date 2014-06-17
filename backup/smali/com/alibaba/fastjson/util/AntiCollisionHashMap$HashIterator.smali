.class abstract Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 3

    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    iget v0, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextEntry()Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    array-length v3, v1

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-eqz v2, :cond_2

    :cond_3
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    return-void
.end method
