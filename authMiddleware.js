import jwt from "jsonwebtoken";

export const authMiddleware = (req, res, next) => {
  try {
    // ✅ Get token from Authorization header
    const authHeader = req.headers["authorization"];
    if (!authHeader) {
      return res.status(401).json({ message: "No token provided" });
    }

    // ✅ Token should be in format "Bearer <token>"
    const token = authHeader.split(" ")[1];
    if (!token) {
      return res.status(401).json({ message: "Invalid token format" });
    }

    // ✅ Verify token
    const decoded = jwt.verify(token, process.env.JWT_SECRET);

    // ✅ Attach user info to request
    req.user = decoded;

    // Continue to next middleware or route
    next();
  } catch (error) {
    return res.status(403).json({ message: "Invalid or expired token" });
  }
};
