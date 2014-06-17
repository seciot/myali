.class public Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;
.super Ljava/lang/Object;
.source "PubAppMessageQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    .line 51
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 54
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method clear()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public deque()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getSubscriberEnum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isGreatThanMaxMsgCount()Z
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method setSubscriberEnum(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->a:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 191
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PubAppMessageQueue [subscriberEnum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
