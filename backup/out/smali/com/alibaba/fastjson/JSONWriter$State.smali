.class public final enum Lcom/alibaba/fastjson/JSONWriter$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/fastjson/JSONWriter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/JSONWriter$State;

.field public static final enum ArrayValue:Lcom/alibaba/fastjson/JSONWriter$State;

.field public static final enum BeginArray:Lcom/alibaba/fastjson/JSONWriter$State;

.field public static final enum BeginObject:Lcom/alibaba/fastjson/JSONWriter$State;

.field public static final enum PropertyKey:Lcom/alibaba/fastjson/JSONWriter$State;

.field public static final enum PropertyValue:Lcom/alibaba/fastjson/JSONWriter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/fastjson/JSONWriter$State;

    const-string/jumbo v1, "BeginObject"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONWriter$State;->BeginObject:Lcom/alibaba/fastjson/JSONWriter$State;

    new-instance v0, Lcom/alibaba/fastjson/JSONWriter$State;

    const-string/jumbo v1, "PropertyKey"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/JSONWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyKey:Lcom/alibaba/fastjson/JSONWriter$State;

    new-instance v0, Lcom/alibaba/fastjson/JSONWriter$State;

    const-string/jumbo v1, "PropertyValue"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/JSONWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyValue:Lcom/alibaba/fastjson/JSONWriter$State;

    new-instance v0, Lcom/alibaba/fastjson/JSONWriter$State;

    const-string/jumbo v1, "BeginArray"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/JSONWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONWriter$State;->BeginArray:Lcom/alibaba/fastjson/JSONWriter$State;

    new-instance v0, Lcom/alibaba/fastjson/JSONWriter$State;

    const-string/jumbo v1, "ArrayValue"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONWriter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONWriter$State;->ArrayValue:Lcom/alibaba/fastjson/JSONWriter$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONWriter$State;

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->BeginObject:Lcom/alibaba/fastjson/JSONWriter$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyKey:Lcom/alibaba/fastjson/JSONWriter$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->PropertyValue:Lcom/alibaba/fastjson/JSONWriter$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->BeginArray:Lcom/alibaba/fastjson/JSONWriter$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$State;->ArrayValue:Lcom/alibaba/fastjson/JSONWriter$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/fastjson/JSONWriter$State;->$VALUES:[Lcom/alibaba/fastjson/JSONWriter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONWriter$State;
    .locals 1

    const-class v0, Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONWriter$State;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/fastjson/JSONWriter$State;
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/JSONWriter$State;->$VALUES:[Lcom/alibaba/fastjson/JSONWriter$State;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/JSONWriter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/JSONWriter$State;

    return-object v0
.end method
