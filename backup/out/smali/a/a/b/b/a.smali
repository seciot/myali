.class abstract La/a/b/b/a;
.super La/a/b/b/e;

# interfaces
.implements La/a/a/a/a;


# instance fields
.field a:[Ljava/lang/Class;

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/Class;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La/a/b/b/e;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    iput-object p4, p0, La/a/b/b/a;->a:[Ljava/lang/Class;

    iput-object p5, p0, La/a/b/b/a;->b:[Ljava/lang/String;

    iput-object p6, p0, La/a/b/b/a;->c:[Ljava/lang/Class;

    return-void
.end method
