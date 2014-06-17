.class public final enum Lcom/alipay/android/app/data/Orientation;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/alipay/android/app/data/Orientation;

.field public static final enum b:Lcom/alipay/android/app/data/Orientation;

.field public static final enum c:Lcom/alipay/android/app/data/Orientation;

.field public static final enum d:Lcom/alipay/android/app/data/Orientation;

.field private static final synthetic h:[Lcom/alipay/android/app/data/Orientation;


# instance fields
.field private e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/data/Orientation;

    const-string/jumbo v1, "LeftInOnly"

    const-string/jumbo v3, "left_in"

    sget v4, Lcom/alipay/android/app/R$anim;->b:I

    sget v5, Lcom/alipay/android/app/R$anim;->a:I

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/data/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/app/data/Orientation;->a:Lcom/alipay/android/app/data/Orientation;

    new-instance v3, Lcom/alipay/android/app/data/Orientation;

    const-string/jumbo v4, "RightInOnly"

    const-string/jumbo v6, "right_in"

    sget v7, Lcom/alipay/android/app/R$anim;->d:I

    sget v8, Lcom/alipay/android/app/R$anim;->a:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/alipay/android/app/data/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/alipay/android/app/data/Orientation;->b:Lcom/alipay/android/app/data/Orientation;

    new-instance v3, Lcom/alipay/android/app/data/Orientation;

    const-string/jumbo v4, "LeftInAndRightOut"

    const-string/jumbo v6, "left_in_right_out"

    sget v7, Lcom/alipay/android/app/R$anim;->b:I

    sget v8, Lcom/alipay/android/app/R$anim;->e:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/alipay/android/app/data/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/alipay/android/app/data/Orientation;->c:Lcom/alipay/android/app/data/Orientation;

    new-instance v3, Lcom/alipay/android/app/data/Orientation;

    const-string/jumbo v4, "RightInAndLeftOut"

    const-string/jumbo v6, "right_in_left_out"

    sget v7, Lcom/alipay/android/app/R$anim;->d:I

    sget v8, Lcom/alipay/android/app/R$anim;->c:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/alipay/android/app/data/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/alipay/android/app/data/Orientation;->d:Lcom/alipay/android/app/data/Orientation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/android/app/data/Orientation;

    sget-object v1, Lcom/alipay/android/app/data/Orientation;->a:Lcom/alipay/android/app/data/Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/data/Orientation;->b:Lcom/alipay/android/app/data/Orientation;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alipay/android/app/data/Orientation;->c:Lcom/alipay/android/app/data/Orientation;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alipay/android/app/data/Orientation;->d:Lcom/alipay/android/app/data/Orientation;

    aput-object v1, v0, v11

    sput-object v0, Lcom/alipay/android/app/data/Orientation;->h:[Lcom/alipay/android/app/data/Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/android/app/data/Orientation;->e:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/android/app/data/Orientation;->f:I

    iput p5, p0, Lcom/alipay/android/app/data/Orientation;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/data/Orientation;
    .locals 1

    const-class v0, Lcom/alipay/android/app/data/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/Orientation;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/data/Orientation;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/data/Orientation;->h:[Lcom/alipay/android/app/data/Orientation;

    invoke-virtual {v0}, [Lcom/alipay/android/app/data/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/data/Orientation;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/Orientation;->g:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/Orientation;->f:I

    return v0
.end method
