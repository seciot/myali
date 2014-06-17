.class Lcom/androidquery/util/AQUtility$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/Object;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:[Ljava/lang/Class;

.field private final synthetic d:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/androidquery/util/AQUtility$1;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/androidquery/util/AQUtility$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/androidquery/util/AQUtility$1;->c:[Ljava/lang/Class;

    iput-object p4, p0, Lcom/androidquery/util/AQUtility$1;->d:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/androidquery/util/AQUtility$1;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/androidquery/util/AQUtility$1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/androidquery/util/AQUtility$1;->c:[Ljava/lang/Class;

    iget-object v5, p0, Lcom/androidquery/util/AQUtility$1;->d:[Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
