.class public final Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
.super Ljava/lang/Object;


# instance fields
.field public final bytes:[B

.field public final characters:[C

.field public final hashCode:I

.field public next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

.field public final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>([CIIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p3, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iput p4, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->bytes:[B

    return-void
.end method
