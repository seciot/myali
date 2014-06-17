.class public Lcom/alibaba/fastjson/JSONWriter;
.super Ljava/lang/Object;


# instance fields
.field private context:Lcom/alibaba/fastjson/JSONWriter$Context;

.field private final out:Ljava/io/Writer;

.field private serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

.field private writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONWriter;->out:Ljava/io/Writer;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONWriter;->flush()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/Writer;)V

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    return-void
.end method

.method public writeEndArray()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getParent()Lcom/alibaba/fastjson/JSONWriter$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyKey:Lcom/alibaba/fastjson/JSONWriter$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyValue:Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONWriter$Context;->setState(Lcom/alibaba/fastjson/JSONWriter$State;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->BeginArray:Lcom/alibaba/fastjson/JSONWriter$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->ArrayValue:Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONWriter$Context;->setState(Lcom/alibaba/fastjson/JSONWriter$State;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    sget-object v0, Lcom/alibaba/fastjson/JSONWriter$State;->ArrayValue:Lcom/alibaba/fastjson/JSONWriter$State;

    goto :goto_0
.end method

.method public writeEndObject()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getParent()Lcom/alibaba/fastjson/JSONWriter$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyKey:Lcom/alibaba/fastjson/JSONWriter$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyValue:Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONWriter$Context;->setState(Lcom/alibaba/fastjson/JSONWriter$State;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->BeginArray:Lcom/alibaba/fastjson/JSONWriter$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->ArrayValue:Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONWriter$Context;->setState(Lcom/alibaba/fastjson/JSONWriter$State;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    sget-object v0, Lcom/alibaba/fastjson/JSONWriter$State;->ArrayValue:Lcom/alibaba/fastjson/JSONWriter$State;

    goto :goto_0
.end method

.method public writeKey(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyValue:Lcom/alibaba/fastjson/JSONWriter$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyKey:Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONWriter$Context;->setState(Lcom/alibaba/fastjson/JSONWriter$State;)V

    return-void
.end method

.method public writeStartArray()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONWriter$Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/JSONWriter$State;->BeginArray:Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson/JSONWriter$Context;Lcom/alibaba/fastjson/JSONWriter$State;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyKey:Lcom/alibaba/fastjson/JSONWriter$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :cond_1
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson/JSONWriter$Context;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    sget-object v2, Lcom/alibaba/fastjson/JSONWriter$State;->BeginArray:Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson/JSONWriter$Context;Lcom/alibaba/fastjson/JSONWriter$State;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->ArrayValue:Lcom/alibaba/fastjson/JSONWriter$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->BeginArray:Lcom/alibaba/fastjson/JSONWriter$State;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "illegal state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeStartObject()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONWriter$Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/JSONWriter$State;->BeginObject:Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson/JSONWriter$Context;Lcom/alibaba/fastjson/JSONWriter$State;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyKey:Lcom/alibaba/fastjson/JSONWriter$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :cond_1
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson/JSONWriter$Context;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    sget-object v2, Lcom/alibaba/fastjson/JSONWriter$State;->BeginObject:Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson/JSONWriter$Context;Lcom/alibaba/fastjson/JSONWriter$State;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->ArrayValue:Lcom/alibaba/fastjson/JSONWriter$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->BeginObject:Lcom/alibaba/fastjson/JSONWriter$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->BeginArray:Lcom/alibaba/fastjson/JSONWriter$State;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "illegal state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONWriter$Context;->getState()Lcom/alibaba/fastjson/JSONWriter$State;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyKey:Lcom/alibaba/fastjson/JSONWriter$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyValue:Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONWriter$Context;->setState(Lcom/alibaba/fastjson/JSONWriter$State;)V

    return-void
.end method
