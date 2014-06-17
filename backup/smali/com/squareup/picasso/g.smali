.class final enum Lcom/squareup/picasso/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/squareup/picasso/g;

.field public static final enum b:Lcom/squareup/picasso/g;

.field public static final enum c:Lcom/squareup/picasso/g;

.field private static final synthetic e:[Lcom/squareup/picasso/g;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/squareup/picasso/g;

    const-string/jumbo v1, "MEMORY"

    const v2, -0xff0100

    invoke-direct {v0, v1, v3, v2}, Lcom/squareup/picasso/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/picasso/g;->a:Lcom/squareup/picasso/g;

    new-instance v0, Lcom/squareup/picasso/g;

    const-string/jumbo v1, "DISK"

    const/16 v2, -0x100

    invoke-direct {v0, v1, v4, v2}, Lcom/squareup/picasso/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/picasso/g;->b:Lcom/squareup/picasso/g;

    new-instance v0, Lcom/squareup/picasso/g;

    const-string/jumbo v1, "NETWORK"

    const/high16 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/squareup/picasso/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/picasso/g;->c:Lcom/squareup/picasso/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/picasso/g;

    sget-object v1, Lcom/squareup/picasso/g;->a:Lcom/squareup/picasso/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/picasso/g;->b:Lcom/squareup/picasso/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/picasso/g;->c:Lcom/squareup/picasso/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/squareup/picasso/g;->e:[Lcom/squareup/picasso/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/squareup/picasso/g;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/picasso/g;
    .locals 1

    const-class v0, Lcom/squareup/picasso/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/g;

    return-object v0
.end method

.method public static values()[Lcom/squareup/picasso/g;
    .locals 1

    sget-object v0, Lcom/squareup/picasso/g;->e:[Lcom/squareup/picasso/g;

    invoke-virtual {v0}, [Lcom/squareup/picasso/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/picasso/g;

    return-object v0
.end method
